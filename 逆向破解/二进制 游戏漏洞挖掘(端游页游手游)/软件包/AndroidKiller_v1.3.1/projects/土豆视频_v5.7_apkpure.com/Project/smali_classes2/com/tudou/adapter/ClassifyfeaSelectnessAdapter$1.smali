.class Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;
.super Ljava/lang/Object;
.source "ClassifyfeaSelectnessAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->access$000(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)Lcom/youku/vo/ChannelPageModules;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->access$000(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)Lcom/youku/vo/ChannelPageModules;

    move-result-object v0

    iget-object v1, v0, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->access$100(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 78
    :cond_0
    return-void
.end method
