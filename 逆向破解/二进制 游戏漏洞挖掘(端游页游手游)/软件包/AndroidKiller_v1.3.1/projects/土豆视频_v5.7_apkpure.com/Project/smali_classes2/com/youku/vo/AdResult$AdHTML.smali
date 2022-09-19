.class public Lcom/youku/vo/AdResult$AdHTML;
.super Ljava/lang/Object;
.source "AdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/AdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdHTML"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/AdResult$AdHTML$SusResult;
    }
.end annotation


# instance fields
.field public CU:Ljava/lang/String;

.field public CUF:Ljava/lang/String;

.field public CUM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/AdResult$AdHTML$SusResult;",
            ">;"
        }
    .end annotation
.end field

.field public RS:Ljava/lang/String;

.field public RST:Ljava/lang/String;

.field public SUS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/AdResult$AdHTML$SusResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/AdResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/AdResult;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youku/vo/AdResult$AdHTML;->this$0:Lcom/youku/vo/AdResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method
