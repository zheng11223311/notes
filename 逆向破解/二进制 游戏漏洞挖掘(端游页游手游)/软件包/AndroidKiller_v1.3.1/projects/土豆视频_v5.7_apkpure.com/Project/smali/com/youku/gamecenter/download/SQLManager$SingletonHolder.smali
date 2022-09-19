.class Lcom/youku/gamecenter/download/SQLManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SQLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/SQLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/gamecenter/download/SQLManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/youku/gamecenter/download/SQLManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/download/SQLManager;-><init>(Lcom/youku/gamecenter/download/SQLManager$1;)V

    sput-object v0, Lcom/youku/gamecenter/download/SQLManager$SingletonHolder;->INSTANCE:Lcom/youku/gamecenter/download/SQLManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
