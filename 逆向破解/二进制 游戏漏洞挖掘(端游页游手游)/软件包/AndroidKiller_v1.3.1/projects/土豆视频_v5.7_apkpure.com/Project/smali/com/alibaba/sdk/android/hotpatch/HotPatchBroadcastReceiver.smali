.class public Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    new-instance v1, Lcom/alibaba/sdk/android/hotpatch/a;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/hotpatch/a;-><init>(Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->setHotPatchQueryListener(Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;)V

    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/b;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/hotpatch/b;-><init>(Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
