<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <body>
            <div id="tab" align="center">
                <canvas id="myChart" style="width:100%;max-width:1000px"></canvas>

                <script>


                    var xValues = [
                <%

                    String sel = "select * from tbl_buisness";
                    ResultSet rs = con.selectCommand(sel);
                    ResultSet rs3 = con.selectCommand(sel);
                    while (rs.next()) {
                        out.println("'" + rs.getString("buisness_name") + "',");
                    }

                %>
                    ];

                    var yValues = [
                <%    while (rs3.next()) {

                        String sel1 = "select COALESCE(SUM(cart_qty), 0) as id from tbl_cart c inner join tbl_product p on p.product_id=c.product_id WHERE buisness_id='" + rs3.getString("buisness_id") + "'";
//                        out.println(sel1);
                        ResultSet rs1 = con.selectCommand(sel1);
                        while (rs1.next()) {
                            out.println("'" + rs1.getString("id") + "',");
                        }
                    }

                %>
                    ];



                    var barColors = [
                        "#b91d47",
                        "#00aba9",
                        "#2b5797",
                        "#e8c3b9",
                        "#1e7145",
                        "#b91d47",
                        "#00aba9",
                        "#2b5797",
                        "#e8c3b9",
                        "#1e7145",
                        "#b91d47",
                        "#00aba9",
                        "#2b5797",
                        "#e8c3b9",
                        "#1e7145",
                        "#b91d47",
                        "#00aba9",
                        "#2b5797",
                        "#e8c3b9",
                        "#1e7145"
                    ];

                    new Chart("myChart", {
                        type: "bar",
                        data: {
                            labels: xValues,
                            datasets: [{
                                    label: "Product Wise",
                                    backgroundColor: barColors,
                                    data: yValues
                                }]
                        },
                        options: {
                            title: {
                                display: true,
                                text: "All Product Sales"
                            }
                        }
                    });
            </script>

        </div>
    </body>
</html>