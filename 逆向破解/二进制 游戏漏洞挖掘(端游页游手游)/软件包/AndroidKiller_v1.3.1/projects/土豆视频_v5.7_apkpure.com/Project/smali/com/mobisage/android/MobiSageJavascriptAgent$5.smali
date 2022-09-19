.class Lcom/mobisage/android/MobiSageJavascriptAgent$5;
.super Ljava/lang/Object;
.source "MobiSageJavascriptAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadActionAlert(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

.field final synthetic val$downdialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$5;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$5;->val$downdialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$5;->val$downdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 846
    return-void
.end method
