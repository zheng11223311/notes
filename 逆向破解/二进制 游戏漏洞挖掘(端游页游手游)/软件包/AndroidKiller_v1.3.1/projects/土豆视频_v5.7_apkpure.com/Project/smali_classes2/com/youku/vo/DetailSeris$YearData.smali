.class public Lcom/youku/vo/DetailSeris$YearData;
.super Ljava/lang/Object;
.source "DetailSeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/DetailSeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YearData"
.end annotation


# instance fields
.field public monthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DetailSeris$MonthData;",
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
    .line 24
    iput-object p1, p0, Lcom/youku/vo/DetailSeris$YearData;->this$0:Lcom/youku/vo/DetailSeris;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    return-void
.end method
