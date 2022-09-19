.class public Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;
.super Ljava/lang/Object;
.source "SearchUgcDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SearchUgcDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WirelessSearchResult"
.end annotation


# instance fields
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

.field public pg:I

.field public pz:I

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

.field final synthetic this$0:Lcom/youku/vo/SearchUgcDao;

.field public total:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/SearchUgcDao;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->this$0:Lcom/youku/vo/SearchUgcDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
