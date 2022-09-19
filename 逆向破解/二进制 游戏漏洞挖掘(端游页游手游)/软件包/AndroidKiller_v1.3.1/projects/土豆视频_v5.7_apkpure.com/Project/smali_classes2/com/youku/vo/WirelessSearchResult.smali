.class public Lcom/youku/vo/WirelessSearchResult;
.super Ljava/lang/Object;
.source "WirelessSearchResult.java"


# instance fields
.field public albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouShow;",
            ">;"
        }
    .end annotation
.end field

.field public business_code:Ljava/lang/String;

.field public filter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;"
        }
    .end annotation
.end field

.field public pg:Ljava/lang/String;

.field public pz:Ljava/lang/String;

.field public sort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCSort;",
            ">;"
        }
    .end annotation
.end field

.field public total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
