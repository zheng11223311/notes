.class Lcom/youku/widget/SpecialTopicTabView$1;
.super Ljava/lang/Object;
.source "SpecialTopicTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SpecialTopicTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SpecialTopicTabView;

.field final synthetic val$mChannelPageModules:Lcom/youku/vo/ChannelPageModules;


# direct methods
.method constructor <init>(Lcom/youku/widget/SpecialTopicTabView;Lcom/youku/vo/ChannelPageModules;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/widget/SpecialTopicTabView$1;->this$0:Lcom/youku/widget/SpecialTopicTabView;

    iput-object p2, p0, Lcom/youku/widget/SpecialTopicTabView$1;->val$mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/youku/widget/SpecialTopicTabView$1;->val$mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v1, v2, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 76
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/youku/widget/SpecialTopicTabView$1;->val$mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v2, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/youku/widget/SpecialTopicTabView$1;->this$0:Lcom/youku/widget/SpecialTopicTabView;

    invoke-static {v2}, Lcom/youku/widget/SpecialTopicTabView;->access$000(Lcom/youku/widget/SpecialTopicTabView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "page"

    const-string v3, "\u5206\u7c7b\u9875"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "cmsname"

    iget-object v3, p0, Lcom/youku/widget/SpecialTopicTabView$1;->val$mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "t1.h5_html.click"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
