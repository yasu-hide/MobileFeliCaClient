.class Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray$1;
.super Ljava/lang/Object;
.source "FelicaResultInfoBlockCountInformationArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x4

    .line 107
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;-><init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x4

    .line 114
    const-string v0, "%s : size = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-array v0, p1, [Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray$1;->newArray(I)[Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    move-result-object v0

    return-object v0
.end method
