.class Lcom/tudou/detail/widget/DetailSubPanel$1;
.super Ljava/lang/Object;
.source "DetailSubPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/DetailSubPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/DetailSubPanel;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailSubPanel;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel$1;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel$1;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/widget/DetailSubPanel;->access$002(Lcom/tudou/detail/widget/DetailSubPanel;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 65
    return-void
.end method
