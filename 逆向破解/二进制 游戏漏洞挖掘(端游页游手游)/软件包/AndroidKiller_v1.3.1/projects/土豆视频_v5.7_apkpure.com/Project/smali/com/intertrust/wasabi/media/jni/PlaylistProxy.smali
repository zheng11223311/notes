.class public Lcom/intertrust/wasabi/media/jni/PlaylistProxy;
.super Ljava/lang/Object;
.source "PlaylistProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create(Ljava/util/EnumSet;[J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;",
            ">;[J)I"
        }
    .end annotation
.end method

.method public static native getAndClearLastError(J)I
.end method

.method public static native getAuthToken(J[Ljava/lang/String;)I
.end method

.method public static native makeUrl(JLjava/lang/String;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;[Ljava/lang/String;)I
.end method

.method public static native start(J)I
.end method

.method public static native stop(J)I
.end method
