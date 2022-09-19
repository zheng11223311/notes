.class Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;
.super Ljava/lang/Object;
.source "MobiSageAdPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;->this$1:Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 321
    return-void
.end method
