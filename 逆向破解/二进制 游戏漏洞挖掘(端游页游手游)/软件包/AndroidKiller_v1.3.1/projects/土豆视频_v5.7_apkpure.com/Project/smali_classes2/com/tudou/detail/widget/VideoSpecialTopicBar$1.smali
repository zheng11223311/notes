.class Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;
.super Ljava/lang/Object;
.source "VideoSpecialTopicBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSpecialTopicBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$000(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$000(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "page"

    const-string v2, "\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "cmsname"

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$000(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "t1.h5_html.click"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 47
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$000(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    iget-object v2, v1, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 49
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
