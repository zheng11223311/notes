.class Lcom/youku/widget/SearchHeadLayout$5;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 153
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$5;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$5;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/youku/widget/SearchHeadLayout$OnEditListener;->onKeyBoardSearchClick(I)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method
