.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;
.super Ljava/lang/Object;
.source "AccountIntroductionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountIntroductionFragment;->uploadUserIcon(Lcom/youku/vo/UserIntroductionData$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

.field final synthetic val$introductionBean:Lcom/youku/vo/UserIntroductionData$Data;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/vo/UserIntroductionData$Data;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->val$introductionBean:Lcom/youku/vo/UserIntroductionData$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 422
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$800(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->val$introductionBean:Lcom/youku/vo/UserIntroductionData$Data;

    iget-object v2, v2, Lcom/youku/vo/UserIntroductionData$Data;->pic_update:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v2, v2, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->picupdate_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->val$introductionBean:Lcom/youku/vo/UserIntroductionData$Data;

    iget-object v3, v3, Lcom/youku/vo/UserIntroductionData$Data;->pic_update:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v3, v3, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->cookies:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/youku/util/IntroductionManager;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "1"

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$700(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$700(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
