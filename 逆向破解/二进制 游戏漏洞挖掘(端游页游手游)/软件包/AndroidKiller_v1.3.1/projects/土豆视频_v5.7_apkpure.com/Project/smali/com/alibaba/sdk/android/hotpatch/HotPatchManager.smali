.class public interface abstract Lcom/alibaba/sdk/android/hotpatch/HotPatchManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/String;)V
.end method

.method public abstract init(Lcom/alibaba/sdk/android/app/AppContext;)V
.end method

.method public abstract setHotPatchQueryListener(Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;)V
.end method

.method public abstract startAlarm()V
.end method

.method public abstract stopAlarm()V
.end method
