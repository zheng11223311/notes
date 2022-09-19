.class Lcom/youku/widget/SearchHeadLayout$3;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SearchHeadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchHeadLayout;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchHeadLayout;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$3;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$3;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$3;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/SearchHeadLayout$OnEditListener;->onBack()V

    .line 139
    :cond_0
    return-void
.end method
