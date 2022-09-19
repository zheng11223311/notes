.class Lcom/tudou/ui/fragment/VideoRecommendFragment$3;
.super Ljava/lang/Object;
.source "VideoRecommendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/VideoRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e3a\u6211\u63a8\u8350\u89c6\u9891\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/VideoRecommendActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e3a\u6211\u63a8\u8350\u754c\u9762\u89c6\u9891\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 299
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$100(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/RecommendVideoInfo;

    .line 300
    .local v6, "videoItem":Lcom/youku/vo/RecommendVideoInfo;
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    iget-object v1, v6, Lcom/youku/vo/RecommendVideoInfo;->itemId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$600(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/RecommendVideoInfo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v6, Lcom/youku/vo/RecommendVideoInfo;->title:Ljava/lang/String;

    iget-object v4, v6, Lcom/youku/vo/RecommendVideoInfo;->playlist_code:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method
