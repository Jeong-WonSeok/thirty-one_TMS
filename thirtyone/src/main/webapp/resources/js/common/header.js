
$(document).ready(function() {
	
	const root = document.querySelector(':root');
	const rootStyles = getComputedStyle(root);
	
	const customBlue = rootStyles.getPropertyValue('--blue');
	const customDarkGray = rootStyles.getPropertyValue('--darkgray');
	const customLightGray = rootStyles.getPropertyValue('--lightgray');
	const customSkyBlue = rootStyles.getPropertyValue('--skyblue');
	const customBlack = rootStyles.getPropertyValue('--black');
	
	let preClicked = null;
	
	$(".sidebar-title").on("click", function() {
		
		$('.sidebar-title').each(function(){
			let img = $(this).find('.sidebar-icon');
			let arrow = $(this).find('.arrow');
			let originArrow = arrow.data('original-src');
			let originSrc = img.data('original-src');
			img.attr('src',originSrc);
			arrow.attr('src', originArrow);
			
			$(this).css('background-color', 'white');
			$(this).css('color',customDarkGray);
			$(this).find('a').css('color', customDarkGray);
		})
		
		var clickedImg = $(this).find('.sidebar-icon');
		var clickedArrow = $(this).find('.arrow');
		var newArrow = clickedArrow.data('active-src');
		var newSrc = clickedImg.data('active-src');
		clickedImg.attr('src', newSrc);
		clickedArrow.attr('src', newArrow);
		
		$(this).css('background-color', customBlue);
		$(this).find('a').css('color', 'white');
		$(this).css('color', 'white');
		
		let navText = $(this).find('a').html();
		let icon = $(this).find('.sidebar-icon');
		let arrow = $(this).find('.arrow');
		
		if(navText === '홈'){
			$(".sidebar-subtitle-box").each( function() {
				if($(this).css("display") == 'block'){
					$(this).slideToggle(300);
				}
			});
		}else if(navText === '공지사항'){
			$(".sidebar-subtitle-box").each( function() {
				if($(this).css("display") == 'block'){
					$(this).slideToggle(300);
				}
			});
		}else if(navText === '전자결재'){
			$('.subtitle').css("display", "none");
			if($('.sidebar-hr').next('.sidebar-subtitle-box').css("display") == 'block'){
				$('.sidebar-hr').next('.sidebar-subtitle-box').slideToggle(300);
			}
			$(this).next('.sidebar-subtitle-box').slideToggle(300);	
		}else if(navText === 'HR'){			
			if($('.sidebar-approval').next('.sidebar-subtitle-box').css("display") == 'block'){
				$('.sidebar-approval').next('.sidebar-subtitle-box').slideToggle(300);
			}
			$(this).next('.sidebar-subtitle-box').slideToggle(300);
		}else if(navText ==='회원관리'){
			if($('.sidebar-org').next('.sidebar-subtitle-box').css("display") == 'block'){
				$('.sidebar-org').next('.sidebar-subtitle-box').slideToggle(300);
			}
			$(this).next('.sidebar-subtitle-box').slideToggle(300);
		}else if(navText ==='조직관리'){
			if($('.sidebar-emp').next('.sidebar-subtitle-box').css("display") == 'block'){
				$('.sidebar-emp').next('.sidebar-subtitle-box').slideToggle(300);
			}
			$(this).next('.sidebar-subtitle-box').slideToggle(300);
		}
		preClicked = this;
	});
	

	
/* ㅁㄴㅇ*/
});