.class Lcom/youku/widget/SearchHeadLayout$1;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 110
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 115
    sput-boolean v2, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    .line 116
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iput-boolean v2, v1, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    .line 117
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v1}, Lcom/youku/widget/SearchHeadLayout;->access$000(Lcom/youku/widget/SearchHeadLayout;)Lcom/tudou/ui/fragment/SearchTudouActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouActivity;->fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v1}, Lcom/youku/widget/SearchHeadLayout;->access$000(Lcom/youku/widget/SearchHeadLayout;)Lcom/tudou/ui/fragment/SearchTudouActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouActivity;->fragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$1;->this$0:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
