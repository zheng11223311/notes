.class Lcom/youdo/view/Browser$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/Browser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/Browser;


# direct methods
.method constructor <init>(Lcom/youdo/view/Browser;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/Browser$4;->this$0:Lcom/youdo/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/Browser$4;->this$0:Lcom/youdo/view/Browser;

    invoke-virtual {v0}, Lcom/youdo/view/Browser;->finish()V

    return-void
.end method
