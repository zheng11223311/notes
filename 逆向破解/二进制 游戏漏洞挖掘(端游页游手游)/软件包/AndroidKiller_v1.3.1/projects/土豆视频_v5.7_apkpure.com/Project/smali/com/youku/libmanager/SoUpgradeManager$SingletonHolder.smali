.class Lcom/youku/libmanager/SoUpgradeManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SoUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/libmanager/SoUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/libmanager/SoUpgradeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/youku/libmanager/SoUpgradeManager;

    invoke-direct {v0}, Lcom/youku/libmanager/SoUpgradeManager;-><init>()V

    sput-object v0, Lcom/youku/libmanager/SoUpgradeManager$SingletonHolder;->INSTANCE:Lcom/youku/libmanager/SoUpgradeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
