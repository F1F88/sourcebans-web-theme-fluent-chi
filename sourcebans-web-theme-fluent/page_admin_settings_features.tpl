<div class="admin_tab_content_title">
    <h2><i class="fas fa-cogs"></i> Sourcebans++ Features</h2>
</div>

<div class="padding">
    <div class="margin-bottom">
        <!-- For more information or help regarding a certain subject move your mouse over the question mark. -->
        有关某个主题的更多信息或帮助，请将鼠标移到问号上。
    </div>

    <form action="" method="post">
        <input type="hidden" name="settingsGroup" value="features" />

        <div class="margin-bottom:half">
            <input type="checkbox" name="export_public" class="form-check" id="export_public" />

            <label for="export_public" class="form-label form-label:left">
                Enable Public Bans
            </label>

            <div class="form-desc">
                <!-- Check this box to enable the entire ban list to be publically downloaded and shared. -->
                选中此框可使整个禁止列表公开下载和共享。
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_kickit" class="form-check" id="enable_kickit" />

            <label for="export_public" class="form-label form-label:left">
                Enable KickIt
            </label>

            <div class="form-desc">
                <!-- Check this box to kick a player when a ban is posted. -->
                勾选 - 将在封禁提交的同时踢出玩家。
            </div>
        </div>

        <div class="margin-bottom:half">
            {if $steamapi}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" />
            {else}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" disabled />
            {/if}

            <label for="enable_groupbanning" class="form-label form-label:left">
                <!-- Enable Group Banning -->
                启用组禁止
            </label>

            {if !$steamapi}
                <div class="message message:error margin-top:half">
                    <!-- You haven't set a valid steamapi key in the config. -->
                    您没有在配置中设置有效的 steamapi 密钥。
                </div>
            {/if}

            <div class="form-desc">
                <!-- Check this box, if you want to enable banning of whole steam community groups. -->
                如果您想禁用整个steam社区群组，请勾选此框。
            </div>

            <div id="enable_groupbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_friendsbanning" class="form-check" id="enable_friendsbanning" />

            <label for="enable_friendsbanning" class="form-label form-label:left">
                <!-- Enable Friend Banning -->
                启用好友封禁
            </label>

            <div class="form-desc">
                <!-- Check this box, if you want to enable banning all steam community friends of a player. -->
                如果您想禁用某个玩家的所有steam社区好友，请勾选此框。
            </div>

            <div id="enable_friendsbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_adminrehashing" class="form-check" id="enable_adminrehashing" />

            <label for="enable_adminrehashing" class="form-label form-label:left">
                <!-- Enable Admin Rehashing -->
                启用 Admin 刷新
            </label>

            <div class="form-desc">
                <!-- Check this box, if you want to enable the admin rehashing everytime an admin/group has been changed. -->
                如果您想在每次更改管理员/组时启用管理员刷新，请选中此框。
            </div>

            <div id="enable_adminrehashing.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_steamlogin" class="form-check" id="enable_steamlogin" />

            <label for="enable_steamlogin" class="form-label form-label:left">
                <!-- Enable Normal Login -->
                启用正常登录
            </label>

            <div class="form-desc">
                <!-- Check this box, if you want to enable the Normal login option on the login form. -->
                如果要在登录表单上启用 “正常登录” 选项，请选中此框。
            </div>

            <div id="enable_steamlogin.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_publiccomments" class="form-check" id="enable_publiccomments" />

            <label for="enable_publiccomments" class="form-label form-label:left">
                <!-- Enable Public Comments -->
                打开公开评论
            </label>

            <div class="form-desc">
                <!-- Check this box, if you want to make admin comments on bans viewable by everyone. -->
                如果您想让所有人都能看到关于禁令的管理评论，请选中此框。
            </div>

            <div id="enable_publiccomments.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            {sb_button text="Save Changes" class="button button-success" id="fsettings" submit=true}
            {sb_button text="Back" class="button button-light" id="fback"}
        </div>
    </form>
</div>
