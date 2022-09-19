.class final Lcom/tudou/videoshare/ShareUtil$4;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->popChatSure(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;ILandroid/text/SpannableString;)Lcom/youku/widget/TudouDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

.field final synthetic val$ab:Lcom/youku/widget/TudouDialog;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/IAlertPositive;ILcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    iput p2, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$tag:I

    iput-object p3, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    iget v1, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$tag:I

    invoke-interface {v0, v1}, Lcom/tudou/videoshare/IAlertPositive;->alertPositive(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$4;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 155
    :cond_1
    return-void
.end method
