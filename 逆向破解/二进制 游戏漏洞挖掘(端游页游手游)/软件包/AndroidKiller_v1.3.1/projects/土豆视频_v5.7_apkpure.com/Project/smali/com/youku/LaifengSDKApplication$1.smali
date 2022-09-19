.class Lcom/youku/LaifengSDKApplication$1;
.super Landroid/os/Handler;
.source "LaifengSDKApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/LaifengSDKApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/LaifengSDKApplication;


# direct methods
.method constructor <init>(Lcom/youku/LaifengSDKApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/LaifengSDKApplication;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/LaifengSDKApplication$1;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 110
    :cond_0
    return-void
.end method
