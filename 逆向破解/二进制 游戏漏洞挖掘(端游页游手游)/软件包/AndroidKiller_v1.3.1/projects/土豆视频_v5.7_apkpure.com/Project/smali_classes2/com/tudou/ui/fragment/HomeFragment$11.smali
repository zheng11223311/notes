.class Lcom/tudou/ui/fragment/HomeFragment$11;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->onTabSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$fistLocal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$11;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$11;->val$fistLocal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1579
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1800()Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "guessLocal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1581
    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->parseGuessList(Ljava/lang/String;)Z

    .line 1584
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$11;->val$fistLocal:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/vo/IndexPageData;->parseIndexPageData(Ljava/lang/String;)Lcom/youku/vo/IndexPageData;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    .line 1585
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->getTargetDetailList(Lcom/youku/vo/IndexPageData;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    .line 1586
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$11;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x385

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1588
    return-void
.end method
