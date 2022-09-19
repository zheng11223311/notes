.class Lcom/youku/gamecenter/GameSearchResultActivity$2;
.super Ljava/lang/Object;
.source "GameSearchResultActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchResultActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$000(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 112
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$000(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 113
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$000(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 115
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/GameSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 117
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    iget-object v3, v3, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$102(Lcom/youku/gamecenter/GameSearchResultActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$100(Lcom/youku/gamecenter/GameSearchResultActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$200(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x33

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 121
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$200(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->search_keyword_empty:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 127
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_1
    :goto_0
    return v4

    .line 124
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchResultActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v3}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$100(Lcom/youku/gamecenter/GameSearchResultActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$300(Lcom/youku/gamecenter/GameSearchResultActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
