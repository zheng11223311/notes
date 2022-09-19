.class public Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mLastOrientation:I

.field private mMraidDisplayController:Lcom/youdo/controller/MraidDisplayController;


# direct methods
.method public constructor <init>(Lcom/youdo/controller/MraidDisplayController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mLastOrientation:I

    iput-object p1, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mMraidDisplayController:Lcom/youdo/controller/MraidDisplayController;

    iget-object v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mMraidDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidDisplayController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mLastOrientation:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mMraidDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidDisplayController;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mLastOrientation:I

    iget-object v0, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mMraidDisplayController:Lcom/youdo/controller/MraidDisplayController;

    iget v1, p0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/youdo/controller/MraidDisplayController;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method
