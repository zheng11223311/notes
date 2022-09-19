.class Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;
.super Ljava/lang/Object;
.source "FullscreenFragmentAnnoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

.field final synthetic val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->anno:Lcom/tudou/detail/vo/Annotation;

    iget-object v0, v0, Lcom/tudou/detail/vo/Annotation;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "t1.detail_player.annotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->anno:Lcom/tudou/detail/vo/Annotation;

    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    invoke-static {v1}, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;->access$000(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/Annotation;->skip(Landroid/content/Context;)V

    goto :goto_0
.end method
