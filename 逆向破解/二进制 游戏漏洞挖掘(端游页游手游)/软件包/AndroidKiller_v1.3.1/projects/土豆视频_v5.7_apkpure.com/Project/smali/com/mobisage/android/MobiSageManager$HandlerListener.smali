.class Lcom/mobisage/android/MobiSageManager$HandlerListener;
.super Ljava/lang/Object;
.source "MobiSageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageManager;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mobisage/android/MobiSageManager$HandlerListener;->this$0:Lcom/mobisage/android/MobiSageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageManager;Lcom/mobisage/android/MobiSageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageManager;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageManager$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageManager$HandlerListener;-><init>(Lcom/mobisage/android/MobiSageManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageManager$HandlerListener;->this$0:Lcom/mobisage/android/MobiSageManager;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageManager;->access$100(Lcom/mobisage/android/MobiSageManager;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
