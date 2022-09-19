.class public Lcom/youku/vo/DetailSeris$MonthData;
.super Ljava/lang/Object;
.source "DetailSeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/DetailSeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonthData"
.end annotation


# instance fields
.field public seriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SeriesVideo;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/DetailSeris;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/DetailSeris;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/vo/DetailSeris$MonthData;->this$0:Lcom/youku/vo/DetailSeris;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    return-void
.end method
