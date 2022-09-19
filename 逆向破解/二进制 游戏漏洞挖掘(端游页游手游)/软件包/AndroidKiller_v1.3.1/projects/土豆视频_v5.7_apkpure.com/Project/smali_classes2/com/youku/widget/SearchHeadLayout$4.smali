.class Lcom/youku/widget/SearchHeadLayout$4;
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
    .line 142
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/widget/SearchHeadLayout$OnEditListener;->onClear(Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    const-string v1, ""

    invoke-virtual {v0, v1, v2, v2}, Lcom/youku/widget/SearchHeadLayout;->setEditText(Ljava/lang/String;II)V

    .line 149
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$4;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v1}, Lcom/youku/widget/SearchHeadLayout;->access$000(Lcom/youku/widget/SearchHeadLayout;)Lcom/tudou/ui/fragment/SearchTudouActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 150
    return-void
.end method
