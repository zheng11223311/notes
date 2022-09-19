.class Lcom/mobisage/android/MobiSageActivity$3;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$3;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 642
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 644
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$3;->this$0:Lcom/mobisage/android/MobiSageActivity;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity$3;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageActivity;->access$900(Lcom/mobisage/android/MobiSageActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$1000(Lcom/mobisage/android/MobiSageActivity;I)V

    .line 646
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$3;->this$0:Lcom/mobisage/android/MobiSageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageActivity;->access$1102(Lcom/mobisage/android/MobiSageActivity;Z)Z

    .line 647
    return-void
.end method
