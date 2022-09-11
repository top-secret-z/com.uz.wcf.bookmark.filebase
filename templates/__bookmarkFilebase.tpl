{if $templateNameApplication == 'filebase'}
	{if MODULE_BOOKMARK && $__wcf->user->userID && $__wcf->session->getPermission('user.bookmark.canUseBookmark')}
		<script data-relocate="true">
			require(['UZ/Bookmark/Add'], function (UZBookmarkAdd) {
				new UZBookmarkAdd('filebase', '{$file->getTitle()}', '{$file->getLink()}', '.jsAddBookmarkButton');
			});
		</script>
		
		{if WCF_VERSION|substr:0:3 >= '5.5'}
			<li class="jsAddBookmarkButton jsOnly" data-object-id="{@$file->fileID}"><a href="#" title="{lang}wcf.bookmark.add{/lang}" class="button jsTooltip"><span class="icon icon16 fa-{BOOKMARK_DISPLAY_ICON}"><span class="invisible">{lang}wcf.bookmark.add{/lang}</span></a></li>
		{else}
			<li class="jsAddBookmarkButton jsOnly" data-object-id="{@$file->fileID}"><a href="#" title="{lang}wcf.bookmark.add{/lang}" class="button buttonPrimary jsTooltip"><span class="icon icon16 fa-{BOOKMARK_DISPLAY_ICON}"></span><br><small>&nbsp;</small><span class="invisible">{lang}wcf.bookmark.add{/lang}</span></a></li>
		{/if}
	{/if}
{/if}
