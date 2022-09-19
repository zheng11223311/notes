.class Lcom/tudou/ui/fragment/HomeFragment$10;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->getLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$10;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1552
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1800()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "guessLocal":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1554
    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->parseGuessList(Ljava/lang/String;)Z

    .line 1558
    :cond_0
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1900()Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "fistLocal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1560
    invoke-static {v0}, Lcom/youku/vo/IndexPageData;->parseIndexPageData(Ljava/lang/String;)Lcom/youku/vo/IndexPageData;

    move-result-object v3

    sput-object v3, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    .line 1561
    sget-object v3, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->getTargetDetailList(Lcom/youku/vo/IndexPageData;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    .line 1563
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$10;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1564
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x385

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1565
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$10;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1567
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method
