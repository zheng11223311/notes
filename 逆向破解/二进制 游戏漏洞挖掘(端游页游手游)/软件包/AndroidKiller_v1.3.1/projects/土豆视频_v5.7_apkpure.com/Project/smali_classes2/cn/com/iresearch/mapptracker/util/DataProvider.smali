.class public Lcn/com/iresearch/mapptracker/util/DataProvider;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/iresearch/mapptracker/util/DataProvider;->a:Z

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcn/com/iresearch/mapptracker/util/DataProvider;->a:Z

    const-string v0, "mresearch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcn/com/iresearch/mapptracker/util/DataProvider;->a:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static native check()I
.end method

.method public static native getDesP(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native getVVUid(Landroid/content/Context;I)Ljava/lang/String;
.end method
