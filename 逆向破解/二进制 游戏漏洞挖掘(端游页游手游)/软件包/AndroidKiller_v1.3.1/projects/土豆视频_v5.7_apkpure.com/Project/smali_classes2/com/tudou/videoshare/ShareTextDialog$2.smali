.class Lcom/tudou/videoshare/ShareTextDialog$2;
.super Ljava/lang/Object;
.source "ShareTextDialog.java"

# interfaces
.implements Lcom/tudou/videoshare/IAlertPositive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareTextDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/videoshare/ShareTextDialog;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/ShareTextDialog;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tudou/videoshare/ShareTextDialog$2;->this$0:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNagative(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 161
    const-string v0, ""

    invoke-static {v0}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 162
    const-string v0, "share_word"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public alertPositive(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->startWX()V

    .line 156
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog$2;->this$0:Lcom/tudou/videoshare/ShareTextDialog;

    const-string v1, "\u5fae\u4fe1\u597d\u53cb"

    invoke-static {v0, v1}, Lcom/tudou/videoshare/ShareTextDialog;->access$000(Lcom/tudou/videoshare/ShareTextDialog;Ljava/lang/String;)V

    .line 157
    return-void
.end method
