.class Lcom/tudou/ui/fragment/SubscribeFragment$8;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$8;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u5267\u96c6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "t1.subscribe_ssubscribe.navigate"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 360
    sget-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    if-nez v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 366
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 367
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$8;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeFragment;)Lcom/youku/widget/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 368
    const-string v1, "\u8ba2\u9605tab\u5267\u96c6\u7b5b\u9009\u6761\u4ef6\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5728\u8ba2\u9605tab\u70b9\u51fb\u4e86\u5267\u96c6tab\u70b9\u51fb"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
