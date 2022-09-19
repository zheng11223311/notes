.class public Lcn/com/mma/mobile/tracking/domain/SDK;
.super Ljava/lang/Object;
.source "SDK.java"


# instance fields
.field public companies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/mma/mobile/tracking/domain/Company;",
            ">;"
        }
    .end annotation
.end field

.field public offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    invoke-virtual {v1}, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
