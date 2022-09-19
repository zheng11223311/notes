.class Lcom/youku/widget/PodcaseTabView$1;
.super Ljava/lang/Object;
.source "PodcaseTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/PodcaseTabView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/PodcaseTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/PodcaseTabView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youku/widget/PodcaseTabView$1;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$1;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$000(Lcom/youku/widget/PodcaseTabView;)Lcom/youku/vo/ChannelPageModules;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$1;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$000(Lcom/youku/widget/PodcaseTabView;)Lcom/youku/vo/ChannelPageModules;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$1;->this$0:Lcom/youku/widget/PodcaseTabView;

    iget-object v1, p0, Lcom/youku/widget/PodcaseTabView$1;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v1}, Lcom/youku/widget/PodcaseTabView;->access$100(Lcom/youku/widget/PodcaseTabView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/widget/PodcaseTabView;->access$200(Lcom/youku/widget/PodcaseTabView;Landroid/view/View;)V

    goto :goto_0
.end method
