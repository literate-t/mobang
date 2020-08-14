
$(document).ready(function(){
    // let divNode = $(document.createElement("div"));
    // divNode.addClass("dealinfo-m");
    // let p1Node = $(document.createElement("p"));
    // p1Node.append("월세");
    // let input1Node = $(document.createElement("input"));
    // input1Node.attr('placeholder','보증금');
    // let p2Node = $(document.createElement("p"));
    // p2Node.append("/");
    // let input2Node = $(document.createElement("input"));
    // input2Node.attr('placeholder','월세');
    // let p3Node = $(document.createElement("p"));
    // p3Node.append("만원");
    // let btnNode = $(document.createElement("button"));
    // btnNode.addClass("closebtn-m");
    // let faNode = $(document.createElement("i"));
    // faNode.addClass("fa fa-times-circle");
    // btnNode.append(faNode);

    // divNode.append(p1Node);
    // divNode.append(input1Node);
    // divNode.append(p2Node);
    // divNode.append(input2Node);
    // divNode.append(p3Node);
    // divNode.append(btnNode);


    // 월세/전세
    let monthlyRent = 
    $(`<div class="dealinfo-m">
            <p>월세</p>
            <input placeholder="보증금" name="monthly-deposit">
            <p>/</p>
            <input placehoder="월세" name="monthly-price">
            <p>만원</p>
            <button class="closebtn-m">
                <i class="fa fa-times-circle"></i>
            </button>
        </div>`);

    let depositLease = 
    $(`<div class="dealinfo-y">
            <p>전세</p>
            <input placehoder="전세" name="deposit">
            <p>만원</p>
            <button class="closebtn-y">
                <i class="fa fa-times-circle"></i>
            </button>
        </div>`);    
    
    let monthlyBtn = $('.dealbtn1');
    let depositBtn = $('.dealbtn2');
    let infoArea = $('.info-area');

    let inputMonthlyDeposit;
    let inputMonthlyPrice;
    let inputDeposit;

    let data = new Map();

    monthlyBtn.click(function() {
        let monthlyClone = monthlyRent.clone();
        infoArea.append(monthlyClone);

        inputMonthlyDeposit = $('input[name=monthly-deposit]');
        inputMonthlyDeposit.change(function() {
            $(this).attr('value', $(this).val());
        });
        inputMonthlyPrice = $('input[name=monthly-price]');
        inputMonthlyPrice.change(function() {
            $(this).attr('value', $(this).val());
        });
    });

    $(document).on('click', '.closebtn-m', function() {
        $('.dealinfo-m:last-child').remove(); 
    });

    depositBtn.click(function(){
        depositBtn.addClass('clicked');
        depositBtn.attr("disabled", true); 
        infoArea.append(depositLease);

        inputDeposit = $('input[name=deposit]');
        inputDeposit.change(function() {
            $(this).attr('value', $(this).val());
        });
    });

    $(document).on('click', '.closebtn-y', function() {
        $('.dealinfo-y').remove(); 
        depositBtn.removeAttr("disabled", true);
        depositBtn.removeClass('clicked');
    });

    $(document).on('click', '.moving-date button', function(){
        $(this).removeAttr("style", true);
        $(this).css({"color":"#fff"});
        $(this).addClass('clicked');
    });

    // 기본 정보
    let inputSupplyPyeong = $('input[name=supply-pyeong]');
    let inputSupplyM2 = $('input[name=supply-m2]');
    let inputExclusivePyeong = $('input[name=exclusive-pyeong]');
    let inputExclusiveM2 = $('input[name=exclusive-m2]');
    inputSupplyPyeong.change(function() {
        inputSupplyPyeong.attr('value', inputSupplyPyeong.val());
    });
    inputSupplyM2.change(function() {
        inputSupplyM2.attr('value', inputSupplyM2.val());
    });
    inputExclusivePyeong.change(function() {
        inputExclusivePyeong.attr('value', inputExclusivePyeong.val());
    });
    inputExclusiveM2.change(function() {
        inputExclusiveM2.attr('value', inputExclusiveM2.val());
    });    

    // 추가 정보
    // if($('input[name=no-maintenance]').prop('checked') == true) {
    //     //$('.fee-check').remove();
    //     alert('hi');
    // }
    // let maintenanceOption = 
    // `<label class="fee-check">
    //     <input type="checkbox" name="maintenance-option">
    //     <p>협의가능</p>
    // </label>`;
    let feeCheck = $(".fee-check");
    let maintenanceFee = $('#maintenance-fee');
    let inputNoMaintenace = $('input[name=no-maintenance]');
    inputNoMaintenace.change(function() {
        if(inputNoMaintenace.prop('checked') == true) {
            feeCheck[0].remove();
            maintenanceFee.prop('disabled', true);
        } else {
            feeCheck[1].before(feeCheck[0]);
            maintenanceFee.prop('disabled', false);
        }
    });
    
    let parkingAvail = $('input[name=parking]');
    let inputParkingFee = $('input[name=parking-fee]');
    parkingAvail.change(function() {
        if (parkingAvail.prop('checked') == true) {
            inputParkingFee.attr('value', '');
            inputParkingFee.prop('disabled', true);
        } else {
            inputParkingFee.prop('disabled', false);
            inputParkingFee.attr('value', inputParkingFee.val());
        }
    });

    maintenanceFee.change(function() {
        maintenanceFee.attr('value', maintenanceFee.val());
    });


    $(document).on('click', '.submit', function() {
        // 주소, 입주 가능일 - not yet

        /* 매물 종류 */
        let selectedVal = $('input[name=room_type]:checked').val();
        data.set('roomType', selectedVal);
        selectedVal = $('input[name=building_type]:checked').val();
        data.set('buildingType', selectedVal);

        /* 거래 정보(전월세) */
        let dataArray = new Array();
        inputMonthlyDeposit.each(function(index){
            dataArray.push($(this).val());
        });
        data.set('monthlyDeposit', dataArray);
        dataArray = [];
        inputMonthlyPrice.each(function(index){
            dataArray.push($(this).val());
        });
        data.set('monthlyPrice', dataArray);
        if (!!inputDeposit === true) {
            data.set('deposit', inputDeposit.val());
        }

        /* 기본 정보 */
        data.set('supplyPyeong', inputSupplyPyeong.val());
        data.set('supplyM2', inputSupplyM2.val());
        data.set('exclusivePyeong', inputExclusivePyeong.val());
        data.set('exclusiveM2', inputExclusiveM2.val());

        selectedVal = $('select[name=building-floor]').val();
        data.set('buildingFloor', selectedVal);
        selectedVal = $('select[name=selected-floor]').val();
        data.set('selectedFloor', selectedVal);

        selectedVal = $('#heat option:selected').val();
        data.set('heat', selectedVal);

        /* 추가 정보 */
        // 관리비
        data.set('maintenanceFee', maintenanceFee.val());
        // 관리비 항목
        let maintenanceItems = $('input[name=maintenance-items]:checked').map(function() {
            return this.value;
        }).get().join();
        data.set('maintenanceItems', maintenanceItems);
        // 주차 여부
        selectedVal = $('input[name=parking]:checked').val();
        data.set('parkingAvail', selectedVal);
        data.set('parkingFee', inputParkingFee.val());

        console.log(JSON.stringify(Array.from(data.entries())));
    });
});

// $(document).ready(function(){
    
//     let divNode = $(document.createElement("div"));
//     divNode.addClass("dealinfo-y");
//     let p1Node = $(document.createElement("p"));
//     p1Node.append("전세");
//     let input1Node = $(document.createElement("input"));
//     input1Node.attr('placeholder','전세');
//     let p2Node = $(document.createElement("p"));
//     p2Node.append("만원");
//     let btnNode = $(document.createElement("button"));
//     btnNode.addClass('closebtn-y');
//     let faNode = $(document.createElement("i"));
//     faNode.addClass("fa fa-times-circle");
//     btnNode.append(faNode);

//     divNode.append(p1Node);
//     divNode.append(input1Node);
//     divNode.append(p2Node);
//     divNode.append(btnNode);

//     $('.dealbtn2').click(function(){
//         $('.dealbtn2').addClass('clicked');
//         $('.dealbtn2').attr("disabled", true); 
//         var divClone = divNode.clone();
//         $('.info-area').append(divClone);
//     });

//     $(document).on('click', '.closebtn-y', function(){
//         $('.dealinfo-y').remove(); 
//         $('.dealbtn2').removeAttr("disabled", true);
//         $('.dealbtn2').removeClass('clicked');
//     });
// });

// $(document).ready(function(){
//     $(document).on('click', '.moving-date button', function(){
//         $(this).removeAttr("style", true);
//         $(this).css({"color":"#fff"});
//         $(this).addClass('clicked');
//     });

//     let dataArray = [];
//     $(document).on('click', '.submit', function(){
//         let radioVal = $('input[name=room_type]:checked').val();
//         dataArray.push(radioVal);
//         radioVal = $('input[name=building_type]:checked').val();
//         dataArray.push(radioVal);
//     });
// });