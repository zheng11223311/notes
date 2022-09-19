.class Lcom/youku/gamecenter/GameSearchActivity$1;
.super Ljava/lang/Object;
.source "GameSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchActivity;->setTitleBarSearchClickAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchActivity;

.field final synthetic val$layout_focus:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->val$layout_focus:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->val$layout_focus:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 241
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->val$layout_focus:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 242
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->val$layout_focus:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 244
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/GameSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 247
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iget-object v3, v3, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "searchWord":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v3}, Lcom/youku/gamecenter/GameSearchActivity;->access$100(Lcom/youku/gamecenter/GameSearchActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x33

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 253
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v3}, Lcom/youku/gamecenter/GameSearchActivity;->access$100(Lcom/youku/gamecenter/GameSearchActivity;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/youku/gamecenter/R$string;->search_keyword_empty:I

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 260
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "searchWord":Ljava/lang/String;
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    :goto_0
    return v5

    .line 257
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v1    # "searchWord":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$1;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v3, v1}, Lcom/youku/gamecenter/GameSearchActivity;->access$200(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
