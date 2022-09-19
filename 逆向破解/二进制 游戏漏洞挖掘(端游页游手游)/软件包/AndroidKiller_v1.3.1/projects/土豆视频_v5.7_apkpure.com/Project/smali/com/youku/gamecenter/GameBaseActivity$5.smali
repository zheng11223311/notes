.class Lcom/youku/gamecenter/GameBaseActivity$5;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentCodeOrCountService$OnPresentCodeServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameBaseActivity;->setPresentNewCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameBaseActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity$5;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$5;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameBaseActivity;->access$100(Lcom/youku/gamecenter/GameBaseActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$5;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameBaseActivity;->access$100(Lcom/youku/gamecenter/GameBaseActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->new_count:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->new_count:I

    if-gtz v0, :cond_1

    .line 347
    :cond_0
    const-string v0, "N"

    sput-object v0, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$5;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameBaseActivity;->access$200(Lcom/youku/gamecenter/GameBaseActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void

    .line 349
    :cond_1
    iget v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->new_count:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    goto :goto_0
.end method
