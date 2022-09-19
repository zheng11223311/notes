.class Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;
.super Ljava/lang/Object;
.source "PresentButtonHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentCodeOrCountService$OnPresentCodeServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/present/PresentButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnPresentCodeServiceListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    .line 209
    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 7
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$000(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v1, 0x2

    .line 220
    .local v1, "get_status":I
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->switchFailedToPresnetStatus(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)Lcom/youku/gamecenter/present/PresentStatus;

    move-result-object v6

    .line 222
    .local v6, "status":Lcom/youku/gamecenter/present/PresentStatus;
    sget-object v0, Lcom/youku/gamecenter/present/PresentButtonHelper$1;->$SwitchMap$com$youku$gamecenter$present$PresentStatus:[I

    invoke-virtual {v6}, Lcom/youku/gamecenter/present/PresentStatus;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 239
    const/4 v1, 0x4

    .line 243
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    iput-object v6, v0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 245
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/gamecenter/widgets/PresentGetDialog;

    .line 248
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$200(Lcom/youku/gamecenter/present/PresentButtonHelper;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v0, v2, v3, v4}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$300(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$400(Lcom/youku/gamecenter/present/PresentButtonHelper;)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    sget-object v3, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v3, v0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 226
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    iget-object v3, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorDesc:Ljava/lang/String;

    iput-object v3, v0, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->isPresentOccupied(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->insert(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 231
    :cond_1
    const/4 v1, 0x3

    .line 232
    goto :goto_1

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, v0, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    goto :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$000(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    sget-object v1, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 262
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v4}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$500(Lcom/youku/gamecenter/present/PresentButtonHelper;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/gamecenter/widgets/PresentGetDialog;

    .line 264
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->insert(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 266
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v2}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$200(Lcom/youku/gamecenter/present/PresentButtonHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$300(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v1

    iget v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->available_num:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v2}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v2

    iget v2, v2, Lcom/youku/gamecenter/present/PresentInfo;->total_num:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    .line 270
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$400(Lcom/youku/gamecenter/present/PresentButtonHelper;)V

    goto :goto_0
.end method
