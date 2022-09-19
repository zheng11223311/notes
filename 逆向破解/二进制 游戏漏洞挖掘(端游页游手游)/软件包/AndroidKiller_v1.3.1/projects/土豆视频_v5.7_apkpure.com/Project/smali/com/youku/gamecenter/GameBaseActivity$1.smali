.class Lcom/youku/gamecenter/GameBaseActivity$1;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameBaseActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameBaseActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity$1;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$1;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->handleBackButtonPressed()V

    .line 155
    return-void
.end method
