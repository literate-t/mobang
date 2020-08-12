
$(document).ready(function(){
    
    let divNode = $(document.createElement("div"));
    divNode.addClass("dealinfo-m");
    let p1Node = $(document.createElement("p"));
    p1Node.append("월세");
    let input1Node = $(document.createElement("input"));
    input1Node.attr('placeholder','보증금');
    let p2Node = $(document.createElement("p"));
    p2Node.append("/");
    let input2Node = $(document.createElement("input"));
    input2Node.attr('placeholder','월세');
    let p3Node = $(document.createElement("p"));
    p3Node.append("만원");
    let btnNode = $(document.createElement("button"));
    btnNode.addClass("closebtn-m");
    let faNode = $(document.createElement("i"));
    faNode.addClass("fa fa-times-circle");
    btnNode.append(faNode);

    divNode.append(p1Node);
    divNode.append(input1Node);
    divNode.append(p2Node);
    divNode.append(input2Node);
    divNode.append(p3Node);
    divNode.append(btnNode);
    
    $('.dealbtn1').click(function(){
        var divClone = divNode.clone();
        $('.info-area').append(divClone);
    });

    $(document).on('click', '.closebtn-m', function(){
        $('.dealinfo-m:last-child').remove(); 
    });
});

$(document).ready(function(){
    
    let divNode = $(document.createElement("div"));
    divNode.addClass("dealinfo-y");
    let p1Node = $(document.createElement("p"));
    p1Node.append("전세");
    let input1Node = $(document.createElement("input"));
    input1Node.attr('placeholder','전세');
    let p2Node = $(document.createElement("p"));
    p2Node.append("만원");
    let btnNode = $(document.createElement("button"));
    btnNode.addClass('closebtn-y');
    let faNode = $(document.createElement("i"));
    faNode.addClass("fa fa-times-circle");
    btnNode.append(faNode);

    divNode.append(p1Node);
    divNode.append(input1Node);
    divNode.append(p2Node);
    divNode.append(btnNode);

    $('.dealbtn2').click(function(){
        $('.dealbtn2').addClass('clicked');
        $('.dealbtn2').attr("disabled", true); 
        var divClone = divNode.clone();
        $('.info-area').append(divClone);
    });

    $(document).on('click', '.closebtn-y', function(){
        $('.dealinfo-y').remove(); 
        $('.dealbtn2').removeAttr("disabled", true);
        $('.dealbtn2').removeClass('clicked');

    });

});

$(document).ready(function(){
    $(document).on('click', '.moving-date button', function(){
        $(this).removeAttr("style", true);
        $(this).css({"color":"#fff"});
        $(this).addClass('clicked');
    });

    $(document).on('click', '.submit', function(){
        let dataArray = [];
        $('.roomtype-table tr').each(function(){

        });
    });
});

