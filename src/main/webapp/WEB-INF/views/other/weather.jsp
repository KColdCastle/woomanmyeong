<%@ page language="java" contentType="text/html;charset=utf-8" import="wooman.project2.controller.OpenWeatherMapExample"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport1" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="/front/assets1/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front/assets1/css/Weather-Widget-sidebar-styles.css">
    <link rel="stylesheet" href="/front/assets1/css/Weather-Widget-sidebar.css">
</head>

<body>

    <div class="container" style="padding-top: 20px; ">



<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div id="card" class="weater">
					<div class="city-selected">

						<article>

							<div class="info">
								<div class="city"> Seoul</div>
                                    <%
                                        OpenWeatherMapExample example = new OpenWeatherMapExample();
                                        example.fetchWeatherData();
                                        String temperature = example.getTemperature();
                                        String wind = example.getWindSpeed();
                                    %>
                                    <div class="temp"><%= temperature %>°C</div>

								<div class="wind">
									<svg version="1.1" id="wind" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										 viewBox="0 0 300.492 300.492" style="enable-background: new 0 0 300.492 300.492;" xml:space="preserve">
									<g>
										<g>
											<g>
												<path style="fill: #FFFFFF;" d="M287.166,100.421c-9.502-13.217-24.046-23.034-39.868-26.945
													c-5.309-1.365-10.845-2.061-16.453-2.061c-11.531,0-22.257,3.035-30.981,8.746c-14.076,8.86-23.709,23.91-25.759,40.157
													c-2.698,16.644,4.357,34.315,17.519,43.959c7.555,5.716,17.47,8.991,27.201,8.991c7.332,0,14.109-1.811,19.575-5.216
													c14.936-8.991,21.495-28.577,14.626-43.665c-3.525-7.669-10.427-13.647-18.455-15.975c-2.361-0.696-4.754-1.082-7.131-1.164
													l-0.288,5.434c1.974,0.141,3.916,0.544,5.782,1.202c6.288,2.143,11.536,7.093,14.044,13.288c1.256,2.975,1.893,6.211,1.822,9.355
													c-0.071,3.421-0.658,6.565-1.855,9.861c-2.366,6.222-6.967,11.667-12.678,14.968c-10.269,6.233-26.624,4.329-37.171-4.172
													c-10.405-8.278-15.529-21.87-13.364-35.528c1.8-13.413,9.85-25.71,21.56-32.912c5.553-3.514,12.069-5.803,18.868-6.636
													c2.823-0.359,6.619-0.413,10.285-0.131c3.497,0.31,7.033,0.903,10.231,1.713c13.358,3.437,25.623,11.863,33.668,23.154
													c8.365,11.324,12.325,24.96,11.438,39.477c-0.587,14.098-5.423,28.305-13.619,40.021c-8.159,11.759-19.907,21.354-33.108,27.027
													c-6.059,2.654-13.07,4.574-20.832,5.695c-4.803,0.68-9.959,0.8-16.203,0.892l-176.09,2.339l-29.817,1.164l0.109,5.439
													l199.015,0.131c2.295,0,4.596,0,6.88,0.022l4.253,0.027c3.835,0,8.376-0.071,12.988-0.593c8.36-1.033,16.263-3.111,23.464-6.168
													c14.925-6.206,28.283-16.905,37.606-30.127c9.426-13.206,15.072-29.36,15.893-45.438
													C301.476,130.293,296.679,113.399,287.166,100.421z"/>
											</g>

										</g>
									</g>
                                <span><%= wind %>m/s</span>

								</div>
							</div>


                        <figure style="background-color: url(http://136.243.1.253/~creolitic/bootsnipp/home.jpg);">
						</article>

						</figure>
					</div>







						</div>
					</div>
				</div>
			</div>
		</div>
	</div></div>
    <script src="/front/assets1/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>