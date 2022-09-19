.class Lcom/youku/widget/SelectnessTabView$4;
.super Ljava/lang/Object;
.source "SelectnessTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SelectnessTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SelectnessTabView;

.field final synthetic val$mSubInfo:Lcom/youku/vo/ModuleLabel;


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView;Lcom/youku/vo/ModuleLabel;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$4;->this$0:Lcom/youku/widget/SelectnessTabView;

    iput-object p2, p0, Lcom/youku/widget/SelectnessTabView$4;->val$mSubInfo:Lcom/youku/vo/ModuleLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$4;->val$mSubInfo:Lcom/youku/vo/ModuleLabel;

    iget-object v0, v0, Lcom/youku/vo/ModuleLabel;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$4;->val$mSubInfo:Lcom/youku/vo/ModuleLabel;

    iget-object v1, v0, Lcom/youku/vo/ModuleLabel;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$4;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-static {v0}, Lcom/youku/widget/SelectnessTabView;->access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 150
    :cond_0
    return-void
.end method
