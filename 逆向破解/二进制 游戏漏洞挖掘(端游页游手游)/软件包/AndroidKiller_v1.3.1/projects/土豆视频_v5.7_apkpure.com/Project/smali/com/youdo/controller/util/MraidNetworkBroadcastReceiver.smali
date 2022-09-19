.class public Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mMraidNetworkController:Lcom/youdo/controller/MraidNetworkController;


# direct methods
.method public constructor <init>(Lcom/youdo/controller/MraidNetworkController;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;->mMraidNetworkController:Lcom/youdo/controller/MraidNetworkController;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidNetworkBroadcastReceiver;->mMraidNetworkController:Lcom/youdo/controller/MraidNetworkController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidNetworkController;->onConnectionChanged()V

    :cond_0
    return-void
.end method
