.class final Lcom/tudou/ui/fragment/LoginFragment$13;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCancel:Landroid/view/View;

.field final synthetic val$aEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aCancel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1242
    if-eqz p2, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "txt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aCancel:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    .end local v0    # "txt":Ljava/lang/String;
    :goto_0
    return-void

    .line 1247
    .restart local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aCancel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1250
    .end local v0    # "txt":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$13;->val$aCancel:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
