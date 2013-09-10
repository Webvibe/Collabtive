<div id="sitebody">

	<div id="header-wrapper">
		<div id="header">
			<div class="header-in">

				<div class="left">
					<div class="logo">
						<h1>
							<a href="index.php" title="{#desktop#}"><img src="./templates/standard/images/logo-b.png" alt="" /></a>
							<span class="title">{$settings.name}<span class="subtitle">{if $settings.subtitle}/ {$settings.subtitle} {/if}</span></span>
						</h1>
					</div>

				</div> {*left End*}

				<div class="right">
					{if $loggedin == 1}
						<ul id="mainmenue">
							<li class="desktop"><a class = "{$mainclasses.desktop}" href="index.php"><span>{#desktop#}</span></a></li>

							{if $usergender == "f"}
							<li class="profil-female"><a class = "{$mainclasses.profil}" href="manageuser.php?action=profile&amp;id={$userid}"><span>{#myaccount#}</span></a></li>
							{else}
							<li class="profil-male"><a class = "{$mainclasses.profil}" href="manageuser.php?action=profile&amp;id={$userid}"><span>{#myaccount#}</span></a></li>
							{/if}

							 {if $userpermissions.admin.add}
							<li class="admin"><a class = "{$mainclasses.admin}" href="admin.php?action=projects"><span>{#administration#}</span><span class="submenarrow"></span></a>
								<div class="submen">
									<ul>
										<li class="project-settings"><a class="{$classes.overview|default}" href="admin.php?action=projects"><span>{#projectadministration#}</span></a></li>
										<!--<li class="customer-settings"><a class="{$classes.customer|default}" href="admin.php?action=customers"><span>{#customeradministration#}</span></a></li>-->
										<li class="user-settings"><a class="{$classes.users|default}" href="admin.php?action=users"><span>{#useradministration#}</span></a></li>
										<li class="system-settings"><a class="{$classes.system|default}" href="admin.php?action=system"><span>{#systemadministration#}</span></a></li>
									</ul>
								</div>
							</li>
							{/if}


							<li class="logout"><a href="manageuser.php?action=logout"><span>{#logout#}</span></a></li>
						</ul>
					{/if}

								<div class="search-wrapper">
									{*Search*}
									<div class="content-right-in">
											<form id = "search" method = "get" action = "managesearch.php" {literal} onsubmit="return validateStandard(this,'input_error');"{/literal}>
											<fieldset>
												<div class = "row">
													<input type="text" class = "text" id="query" name="query" />
												</div>

												<div id="choices"></div>
												<input type = "hidden" name = "action" value = "search" />

												<div id="indicator1" style="display:none;"><img src="templates/standard/images/symbols/indicator_arrows.gif" alt="{#searching#}" /></div>

												<button type="submit" title="{#gosearch#}"></button>
											</fieldset>

											</form>
									</div>
									{*Search End*}

								</div>

				</div> <!-- Right End -->



			</div> <!-- Header-In End -->
		</div> <!-- Header End -->
	</div> <!-- Header-Wrapper End -->


	<div id="contentwrapper">
