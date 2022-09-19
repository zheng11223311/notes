.class Lcom/tudou/ui/fragment/MyTudouFragment$16;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->deleteSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$16;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "arg"    # I

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$16;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2400(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 1050
    return-void
.end method
