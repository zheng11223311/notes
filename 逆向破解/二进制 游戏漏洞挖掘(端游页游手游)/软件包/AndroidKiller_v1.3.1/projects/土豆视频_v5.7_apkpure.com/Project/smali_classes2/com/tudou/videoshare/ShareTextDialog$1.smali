.class Lcom/tudou/videoshare/ShareTextDialog$1;
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
    .line 138
    iput-object p1, p0, Lcom/tudou/videoshare/ShareTextDialog$1;->this$0:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNagative(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 148
    return-void
.end method

.method public alertPositive(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 143
    return-void
.end method
