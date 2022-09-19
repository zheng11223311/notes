.class Lcom/tudou/slidingdrawer/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/slidingdrawer/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/slidingdrawer/Panel;


# direct methods
.method constructor <init>(Lcom/tudou/slidingdrawer/Panel;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 360
    const-string v8, "Panel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startAnimation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v10}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v2, 0x0

    .local v2, "fromXDelta":I
    const/4 v5, 0x0

    .local v5, "toXDelta":I
    const/4 v3, 0x0

    .local v3, "fromYDelta":I
    const/4 v6, 0x0

    .line 365
    .local v6, "toYDelta":I
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_1

    .line 366
    iget-object v10, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v9}, Lcom/tudou/slidingdrawer/Panel;->access$900(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    xor-int/2addr v8, v9

    invoke-static {v10, v8}, Lcom/tudou/slidingdrawer/Panel;->access$802(Lcom/tudou/slidingdrawer/Panel;Z)Z

    .line 370
    :cond_1
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$100(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 371
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v4

    .line 372
    .local v4, "height":I
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 373
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    if-nez v8, :cond_7

    neg-int v3, v4

    .line 377
    :goto_2
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->TRACKING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_b

    .line 378
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1000(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v9}, Lcom/tudou/slidingdrawer/Panel;->access$1000(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 380
    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-static {v9, v8}, Lcom/tudou/slidingdrawer/Panel;->access$802(Lcom/tudou/slidingdrawer/Panel;Z)Z

    .line 381
    move v6, v3

    .line 383
    :cond_2
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1000(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    float-to-int v3, v8

    .line 390
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1100(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 391
    const/high16 v8, 0x447a0000    # 1000.0f

    sub-int v9, v6, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v10}, Lcom/tudou/slidingdrawer/Panel;->access$900(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 393
    .local v1, "calculatedDuration":I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 440
    .end local v4    # "height":I
    :goto_5
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tudou/slidingdrawer/Panel;->access$1002(Lcom/tudou/slidingdrawer/Panel;F)F

    move-result v9

    invoke-static {v8, v9}, Lcom/tudou/slidingdrawer/Panel;->access$1302(Lcom/tudou/slidingdrawer/Panel;F)F

    .line 441
    if-nez v1, :cond_18

    .line 442
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->READY:Lcom/tudou/slidingdrawer/Panel$State;

    invoke-static {v8, v9}, Lcom/tudou/slidingdrawer/Panel;->access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;

    .line 443
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 444
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_4
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1400(Lcom/tudou/slidingdrawer/Panel;)V

    .line 463
    :goto_6
    return-void

    .line 366
    .end local v1    # "calculatedDuration":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v4    # "height":I
    :cond_7
    move v3, v4

    .line 373
    goto/16 :goto_2

    .line 375
    :cond_8
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    if-nez v8, :cond_9

    neg-int v6, v4

    :goto_7
    goto/16 :goto_2

    :cond_9
    move v6, v4

    goto :goto_7

    .line 380
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 384
    :cond_b
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_3

    .line 385
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1000(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    float-to-int v3, v8

    goto/16 :goto_4

    .line 395
    :cond_c
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    if-eqz v8, :cond_d

    .line 396
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    sub-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v9}, Lcom/tudou/slidingdrawer/Panel;->access$400(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1    # "calculatedDuration":I
    goto :goto_5

    .line 400
    .end local v1    # "calculatedDuration":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "calculatedDuration":I
    goto :goto_5

    .line 405
    .end local v1    # "calculatedDuration":I
    .end local v4    # "height":I
    :cond_e
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v7

    .line 406
    .local v7, "width":I
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 407
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    neg-int v2, v7

    .line 411
    :goto_8
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->TRACKING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_15

    .line 412
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1300(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    int-to-float v9, v2

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v9}, Lcom/tudou/slidingdrawer/Panel;->access$1300(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_f

    .line 414
    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$800(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_9
    invoke-static {v9, v8}, Lcom/tudou/slidingdrawer/Panel;->access$802(Lcom/tudou/slidingdrawer/Panel;Z)Z

    .line 415
    move v5, v2

    .line 417
    :cond_f
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1300(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    float-to-int v2, v8

    .line 424
    :cond_10
    :goto_a
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_16

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1100(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 425
    const/high16 v8, 0x447a0000    # 1000.0f

    sub-int v9, v5, v2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v10}, Lcom/tudou/slidingdrawer/Panel;->access$900(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 427
    .restart local v1    # "calculatedDuration":I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_5

    .end local v1    # "calculatedDuration":I
    :cond_11
    move v2, v7

    .line 407
    goto :goto_8

    .line 409
    :cond_12
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    neg-int v5, v7

    :goto_b
    goto :goto_8

    :cond_13
    move v5, v7

    goto :goto_b

    .line 414
    :cond_14
    const/4 v8, 0x0

    goto :goto_9

    .line 418
    :cond_15
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_10

    .line 419
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1300(Lcom/tudou/slidingdrawer/Panel;)F

    move-result v8

    float-to-int v2, v8

    goto :goto_a

    .line 429
    :cond_16
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    if-eqz v8, :cond_17

    .line 430
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1200(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v8

    sub-int v9, v5, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v9}, Lcom/tudou/slidingdrawer/Panel;->access$300(Lcom/tudou/slidingdrawer/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1    # "calculatedDuration":I
    goto/16 :goto_5

    .line 434
    .end local v1    # "calculatedDuration":I
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "calculatedDuration":I
    goto/16 :goto_5

    .line 449
    .end local v7    # "width":I
    :cond_18
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v2

    int-to-float v9, v5

    int-to-float v10, v3

    int-to-float v11, v6

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 454
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 455
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1500(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v8, v9, :cond_1a

    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1100(Lcom/tudou/slidingdrawer/Panel;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 457
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 462
    :cond_19
    :goto_c
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-virtual {v8, v0}, Lcom/tudou/slidingdrawer/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 458
    :cond_1a
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1600(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    if-eqz v8, :cond_19

    .line 459
    iget-object v8, p0, Lcom/tudou/slidingdrawer/Panel$2;->this$0:Lcom/tudou/slidingdrawer/Panel;

    invoke-static {v8}, Lcom/tudou/slidingdrawer/Panel;->access$1600(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_c
.end method
