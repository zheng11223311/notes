.class public Lcn/com/mma/mobile/tracking/domain/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/mma/mobile/tracking/domain/Argument;",
            ">;"
        }
    .end annotation
.end field

.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/mma/mobile/tracking/domain/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
