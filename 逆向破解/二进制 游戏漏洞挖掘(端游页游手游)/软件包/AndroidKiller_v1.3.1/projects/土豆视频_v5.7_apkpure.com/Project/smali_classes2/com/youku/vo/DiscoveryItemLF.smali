.class public Lcom/youku/vo/DiscoveryItemLF;
.super Lcom/youku/vo/DiscoveryItem;
.source "DiscoveryItemLF.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/DiscoveryItemLFCell;",
            ">;"
        }
    .end annotation
.end field

.field public skip_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    return-void
.end method
