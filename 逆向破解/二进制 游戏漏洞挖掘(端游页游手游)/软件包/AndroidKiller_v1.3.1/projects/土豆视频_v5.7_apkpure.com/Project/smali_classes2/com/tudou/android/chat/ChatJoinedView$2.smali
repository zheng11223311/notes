.class Lcom/tudou/android/chat/ChatJoinedView$2;
.super Ljava/lang/Object;
.source "ChatJoinedView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatJoinedView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatJoinedView;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatJoinedView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tudou/android/chat/ChatJoinedView$2;->this$0:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView$2;->this$0:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatJoinedView;->access$000(Lcom/tudou/android/chat/ChatJoinedView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView$2;->this$0:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatJoinedView;->access$000(Lcom/tudou/android/chat/ChatJoinedView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->setTextEnable(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 80
    return-void
.end method
